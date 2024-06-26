- [ ] Phase 0: Localnet Dev
  - [x] `mud.config.ts`, adding tables in the namespace, [see `docs`]
  - [ ] Write the contract API for the `Crowd Sourcing Protocol` systems.
    - [x] `CSVectorSystem`, registers a project for some space exploitation.
      - [ ] Extra. A vector can also be represented as an insight-type Written ERC720 NFT, which represents ownership over the vector.
      - [ ] Extra. A factory of modified-ERC20 `Vector` tokens meant to represent support for a certain vision.
    - [x] `CSMotionSystem`, represents a request for using the contributions.
    - [x] `CSPotentialSystem`,  registers a contribution of a player.
      - [ ] TODO. Make sure contributions are paid in-game tokens.
        - [ ] Mock the process using a local world chain.
          - [ ] Integrate the world chain into the repo for local use.
    - [x] `CSForceSystem`, a vote system to decide on motions.
- [ ] Phase 1: Testnet Dev
  - [ ] Deploy CSP systems to the testnet
  - [ ] Build a frontend for the systems.
    - [ ] Experiment with the UI
    - [ ] Learn how to send a transaction in the frontend
  - [ ] Connect the frontend to the SSU
- [ ] Phase 2: Maintenance
