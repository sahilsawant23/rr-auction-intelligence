# Rajasthan Royals // Clutch Intelligence Engine

### SupeRR Selector Season 2 (Round 1: Identify the Most Reliable Players Under Pressure)
**Author:** Sahil Sawant (Cricket Strategy & Quantitative Analytics)  
**Live Interactive Dashboard:** [https://sahilsawant23.github.io/rr-auction-intelligence/](https://sahilsawant23.github.io/rr-auction-intelligence/)  
**Formal Methodology Report:** [SupeRR_Selector_Methodology_Report.html](SupeRR_Selector_Methodology_Report.html)

---

## Executive Overview

This repository houses the proprietary quantitative decision-support system developed for the **Rajasthan Royals (RR) IPL 2027 Mega-Auction War Room**. 

Evaluating 119 elite T20 players (55 batters and 64 bowlers) across **195,124 deliveries** and **818 matches** (357 IPL + 461 T20Is, 2022–2026), this engine isolates performance in **high-leverage, match-defining situations** (top 20% leverage cutoff per innings) using ball-by-ball gradient boosted Win Probability Added (WPA) modeling.

---

## Strategic Tactical Deficits Addressed for Rajasthan Royals

1. **Lower-Order Finishing Void (Overs 16–20):**
   - RR's finishing tier (#6 and #7) registered an average high-leverage strike rate of **157.0** versus the league benchmark of **165.4** (-8.4 SR deficit), costing 3 close chases in recent seasons.
   - **Tactical Remedy:** Acquire **Tim David** (Rank 2, 74.4 rating, 186.0 pressure SR) or domestic phenom **Ashutosh Sharma** (Rank 9, 59.7 rating, 193.0 pressure SR).

2. **Death Bowling Wicket Strike Rate:**
   - RR bowlers took only **7.28 wickets per 100 balls** at the death under leverage versus the league benchmark of **8.27**.
   - **Tactical Remedy:** Target **Josh Hazlewood** (Rank 3, 67.1 rating, 8.3 wickets/100 balls in leverage) to partner Jofra Archer.

---

## The 4-Pillar Valuation Architecture

The engine synthesizes four orthogonal tactical pillars into a composite Clutch Index:
- **Pillar 1: High-Leverage Impact (35%)** — Win Probability Added (WPA basis points per 100 balls, Bayesian shrunk).
- **Pillar 2: Baseline Quality Floor (25%)** — Net runs saved/scored above expected on non-pressure deliveries.
- **Pillar 3: Resilience Delta (15%)** — Performance elevation under high leverage relative to normal baseline.
- **Pillar 4: Situational Hit Rate (25%)** — Consistency percentage of high-leverage spells producing positive WPA.

---

## Key Dashboard Capabilities

- **Interactive Valuation Engine:** Live 4-pillar weight tuner with tactical presets (Balanced Scout, Pure Clutch WPA, Baseline Class Floor, Death Specialist).
- **Clutch vs Baseline Matrix:** Quadrant scatter plot cross-referencing WPA impact against baseline skill, with an interactive search bar and full 16-column situational dataset tables (64 bowlers, 55 batters).
- **Player Detail Dossiers:** Deep dives with pressure vs normal situational splits, death workload, and sample reliability alerts.
- **Head-to-Head Compare:** Side-by-side tactical audit between any two players with war-room verdicts.
- **Official RR Target Board:** Priority tiers, paddle bid ceilings, and risk assessment for the IPL 2027 Mega-Auction.
- **Methodology & Rigor:** 150-iteration bootstrap rank distributions and 8-specification sensitivity matrix.

---

## Local Setup & Deployment

To launch the dashboard locally in your browser:
- Double-click `open-dashboard.bat`, or open `index.html` directly in any modern browser.

To deploy or update on GitHub Pages:
```bash
git add .
git commit -m "Update RR Clutch Intelligence Engine"
git push origin main
```
The site automatically updates at [https://sahilsawant23.github.io/rr-auction-intelligence/](https://sahilsawant23.github.io/rr-auction-intelligence/).
