# GMGN 

**GMGN** — Base mini app: daily GM, points, airdrop.

Deploy `contracts/src/GMGNHub.sol` on Base, then set `HUB_CONTRACT_ADDRESS` in `src/config/contract.ts`.

**GM:** 3 free/day (+10 pts), then 0.0001 ETH (+20 pts)

**Deploy ERC20:** 1 free lifetime (+20 pts), then 0.0001 ETH (+40 pts) — like [gas.zip/deployer](https://www.gas.zip/deployer) + [onchaingm.com](https://onchaingm.com/)

## Push

```bash
./push.sh
```

(Tокен в `.env.github`)

## TODO

- [ ] Новое имя, лого, домен Vercel
- [ ] `NEXT_PUBLIC_SITE_URL` в Vercel
- [ ] Farcaster `accountAssociation` в `src/config/manifest.ts`
- [ ] Base app_id / Talent verification meta (если нужны)
