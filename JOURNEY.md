# Rajasthan Royals // SupeRR Selector Season 2: My Analytical Journey

**Author:** Sahil Sawant  
**Project:** Rajasthan Royals Clutch Intelligence Engine  
**Live Interactive Dashboard:** [https://sahilsawant23.github.io/rr-auction-intelligence/](https://sahilsawant23.github.io/rr-auction-intelligence/)  
**Methodology Report:** [SupeRR_Selector_Methodology_Report.html](SupeRR_Selector_Methodology_Report.html)  

---

## 1. Why This Challenge Resonated With Me

When Rajasthan Royals announced Round 1 of the SupeRR Selector Season 2, the core question immediately hooked me: in a format as volatile as T20, can data reliably distinguish players who consistently rise to the occasion under pressure from those whose performance dips?

In casual cricket discourse, "clutch" is often defined by reputation, isolated highlights, or crude death-overs averages. But cricket is intrinsically game-state dependent: hitting 16 runs off the 20th over when 30 are required carries virtually zero match leverage, whereas striking 12 off 8 balls when 10 are needed against an elite yorker specialist is game-defining. I wanted to build an objective, mathematical engine that captures genuine context-adjusted leverage.

---

## 2. My Approach: Modeling Win Probability Leverage

To tackle this, I analyzed the entire 2022–2026 dataset (818 matches across 357 IPL and 461 T20 International fixtures, encompassing 195,124 deliveries).

Rather than using arbitrary over cutoffs, I modeled ball-by-ball Win Probability swing:
1. **Leverage Index (LI):** Quantified how much a single delivery could swing the expected match outcome relative to average.
2. **Top 20% Crucible Cutoff:** Filtered 39,026 high-leverage deliveries (across both first-innings par-score defense and second-innings chases).
3. **4-Pillar Valuation Architecture:** Combined Situational Impact WPA (35%), Baseline Quality Floor (25%), Resilience Delta (15%), and Hit Rate Consistency (25%) into a unified Clutch Index.

---

## 3. The Big Breakthrough: The Split-Half Persistence Paradox

The most exciting moment in the research came when validating model reliability across split halves (2022–24 vs 2024–26):

* **Batting clutch persistence is only r = 0.07.** At 190+ strike rates, boundaries and dismissals are separated by millimeters. Batting in crunch moments has high stochastic noise; therefore, finishers ranked 5 to 15 represent a fluid tactical tier rather than a rigid hierarchy.
* **Bowling clutch persistence is r = 0.31.** Hitting yorker lengths, executing slower-ball bouncers, and suppressing boundaries under pressure is a sticky, highly repeatable skill.

This discovery directly informed my Rajasthan Royals auction strategy: **allocate premium auction purse to elite death bowlers (like Josh Hazlewood or Jasprit Bumrah) because bowling execution is predictable and repeatable**, while building depth in domestic finishers (such as Ashutosh Sharma) to maximize overseas slot efficiency.

---

## 4. Diagnosing RR's Tactical Gaps

Benchmarking Rajasthan Royals' historical data exposed two clear operational bottlenecks:
1. **The #6–#7 Finishing Hole:** RR's lower-order struck at just 157.0 in high-leverage balls versus the 165.4 league average (-8.4 SR deficit), costing multiple tight finishes.
2. **Death Bowling Wicket Rate:** RR captured 7.28 wickets/100 balls in leverage at the death versus the 8.27 league average.

---

## 5. From Static Report to Interactive War-Room Tool

Instead of stopping at a static document, I built an interactive decision-support engine deployed to the web. It features:
* Real-time 4-pillar weight tuning sliders with live tactical presets.
* Quadrant scatter plots cross-referencing WPA impact against baseline skill.
* Complete 16-column situational datasets for 64 bowlers and 55 batters with instant search.
* Head-to-head comparison dossiers and disciplined auction paddle limits.

This challenge was an incredible experience in applying data science to high-stakes franchise cricket strategy.
