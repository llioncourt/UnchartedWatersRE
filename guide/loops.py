import json, itertools
from routes import P, M, G, name, SP, buy_list, sell_price
USE = False   # base prices (index 100%); initial indices drift back to this monthly
def best_leg(a, b, only_start=True):
    best = (0, None, 0, 0)
    for g, (pr, req, ok) in buy_list(a, USE).items():
        if only_start and not ok: continue
        prof = sell_price(b, g, USE) - pr
        if prof > best[0]: best = (prof, g, pr, sell_price(b, g, USE))
    return best
def loops(only_start=True, maxdist=None):
    out = []
    for a, b in itertools.combinations(range(50), 2):
        d = SP[a].get(b)
        if d is None: continue
        if maxdist and d > maxdist: continue
        ab = best_leg(a, b, only_start); ba = best_leg(b, a, only_start)
        tot = ab[0] + ba[0]
        if tot <= 0: continue
        out.append((tot / (2 * d), tot, d, a, b, ab, ba))
    out.sort(reverse=True)
    return out
def show(rows, n=20):
    for eff, tot, d, a, b, ab, ba in rows[:n]:
        l1 = f'{G[ab[1]]} {ab[2]}->{ab[3]}' if ab[1] is not None else 'vazio'
        l2 = f'{G[ba[1]]} {ba[2]}->{ba[3]}' if ba[1] is not None else 'vazio'
        print(f'{name[a]:<13}<->{name[b]:<13} dist {d:5.0f}  lucro/un ida+volta {tot:5d}  por casa {eff:5.2f} | ida: {l1:<26} volta: {l2}')
if __name__ == '__main__':
    print('=== Desde o início (sem investir), qualquer distância ==='); show(loops(True), 15)
    print('\n=== Desde o início, rotas curtas (<= 200 casas) ==='); show(loops(True, 200), 15)
    print('\n=== Com economia liberada (todas as mercadorias) ==='); show(loops(False), 12)
