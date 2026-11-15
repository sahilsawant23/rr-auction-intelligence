# SupeRR Selector Season 2 — Round 1 Methodology Report
## Identify the Most Reliable Players Under Pressure

**Candidate:** Sahil Sawant  
**Competition:** Rajasthan Royals — SupeRR Selector Season 2  
**Dataset Analyzed:** 195,124 Deliveries across 818 Matches (357 IPL + 461 T20I, 2022 to Nov 2026)  
**High-Pressure Deliveries Analyzed:** 39,026 Deliveries (Top 20% Leverage Cutoff)  
**Total Calibrated Profiles:** 119 Cricketers (55 Batters, 64 Bowlers)  

---

## 1. Executive Summary & Official Player Rankings (Unstop Submission Lists)

Evaluating performance in cricket through unadjusted averages or strike rates conflates garbage-time accumulation with championship execution. This methodology introduces a rigorous, four-pillar **Win Probability Added Leverage Index (WPA-LI)** valuation architecture to measure player execution when match leverage is at its peak.

Below are the two ordered Top-10 lists submitted via the Unstop dropdown fields:

### Top 10 Batters Under Pressure (Unstop Dropdown Submission)
1. **Shreyas Iyer** (Rating: 78.2) — Top-10 in 93% of resamples; 180.0 pressure SR vs 148.0 normal SR; only 3.3 dismissals/100 balls in leverage; premier chase anchor (61% chases).
2. **Tim David** (Rating: 74.4) — Top-10 in 95% of resamples; 186.0 pressure SR vs 171.0 normal; 66% of pressure workload at the death; elite boundary strike weapon.
3. **Heinrich Klaasen** (Rating: 67.6) — Top-10 in 71% of resamples; 189.0 pressure SR vs 160.0 normal; spin destroyer and middle-overs enforcer (Pos #5).
4. **Ishan Kishan** (Rating: 64.6) — Top-10 in 55% of resamples; 167.0 pressure SR vs 144.0 normal; explosive high-leverage counter-puncher at #3.
5. **Azmatullah Omarzai** (Rating: 61.9) — Top-10 in 35% of resamples; 198.0 pressure SR vs 118.0 normal (+80 SR jump); massive resilience score (55.0).
6. **Abhishek Sharma** (Rating: 61.6) — Top-10 in 33% of resamples; 186.0 pressure SR vs 187.0 normal; fearless Powerplay high-leverage striker (90% in chases).
7. **Venkatesh Iyer** (Rating: 60.6) — Top-10 in 34% of resamples; 173.0 pressure SR vs 141.0 normal (+32 SR jump); clutch #4 accelerator in knockout scenarios.
8. **Cameron Green** (Rating: 59.8) — Top-10 in 33% of resamples; 154.0 pressure SR vs 153.0 normal; exceptional wicket preservation (3.8 dismissals/100b).
9. **Ashutosh Sharma** (Rating: 59.7) — Top-10 in 35% of resamples; 193.0 pressure SR vs 147.0 normal (+46 SR jump); 96% of pressure balls at the death; premier domestic finisher.
10. **Jos Buttler** (Rating: 58.9) — Top-10 in 37% of resamples; 175.0 pressure SR vs 154.0 normal (+21 SR jump); 53% in chases; proven big-match pedigree.

### Top 10 Bowlers Under Pressure (Unstop Dropdown Submission)
1. **Jasprit Bumrah** (Rating: 69.6) — Top-10 in 91% of resamples; 7.2 economy in leverage vs 6.9 normal; 7.1 wickets/100 balls; 73% death overs workload.
2. **Sunil Narine** (Rating: 68.9) — Top-10 in 79% of resamples; 6.7 economy in leverage vs 6.8 normal; unmatched mystery spin choke and boundary suppression.
3. **Josh Hazlewood** (Rating: 67.1) — Top-10 in 55% of resamples; 7.9 economy in leverage vs 8.1 normal; 8.3 wickets/100 balls in leverage; lethal hard lengths at death.
4. **Eshan Malinga** (Rating: 65.1) — Top-10 in 35% of resamples; 8.2 economy in leverage vs 8.6 normal; 5.1 wickets/100 balls; raw resilience +12.6; elite slinger trajectory.
5. **Varun Chakravarthy** (Rating: 64.0) — Top-10 in 51% of resamples; 7.7 economy in leverage vs 7.8 normal; 6.9 wickets/100 balls in high leverage; middle-overs wicket taker.
6. **Axar Patel** (Rating: 63.7) — Top-10 in 55% of resamples; 7.3 economy in leverage vs 7.9 normal; +33.4 raw resilience delta; low flat trajectory containment.
7. **Krunal Pandya** (Rating: 63.7) — Top-10 in 59% of resamples; 7.4 economy in leverage vs 7.7 normal; 285 IPL pressure balls; ultra-consistent domestic choke weapon.
8. **Kuldeep Yadav** (Rating: 63.6) — Top-10 in 56% of resamples; 7.4 economy in leverage vs 7.9 normal; 6.6 wickets/100 balls; attacking wrist-spin drift and dip.
9. **Wanindu Hasaranga** (Rating: 62.7) — Top-10 in 53% of resamples; 8.9 economy vs 7.5 normal; 7.2 wickets/100 balls; attacking wicket strike weapon.
10. **Nathan Ellis** (Rating: 62.3) — Top-10 in 43% of resamples; 9.0 economy in leverage vs 7.5 normal; 7.4 wickets/100 balls; 69% death overs workload; specialist yorker execution.

---

## 2. Defining Pressure: The Leverage Index Framework

### Why Contextual Pressure Trumps Heuristics
Evaluating pressure solely through crude indicators (e.g., overs 18–20 or matches decided by < 10 runs) creates severe selection bias. An 18th over bowled during a 60-run blowout carries minimal match impact, whereas the 6th over of a chase when a batting team is reeling at 35/4 carries immense match leverage.

### Mathematical Formulation of Leverage Index (LI)
Using ball-by-ball match states across 818 matches, we trained out-of-fold Gradient Boosted Decision Trees to predict real-time win probability: $P(\text{Win} \mid \text{State}_b)$, where:
$$\text{State}_b = \{\text{Balls Remaining}, \text{Runs Required}, \text{Wickets in Hand}, \text{Innings}, \text{Venue Par Run Rate}\}$$

The **Leverage Index (LI)** for delivery $b$ is defined as the expected swing in win probability on that delivery relative to the mean swing across all deliveries:
$$LI_b = \frac{\mathbb{E}\left[|\Delta WP_b|\right]}{\overline{|\Delta WP|}}$$

* $LI = 1.0$: Average match leverage.
* $LI > 1.8$: High-pressure situation where a single boundary or wicket drastically swings the win probability.

### High-Pressure Delivery Threshold
A delivery is formally classified as a **Pressure Ball** if its Leverage Index falls in the **Top 20% within its respective innings** (threshold $\approx 80\text{th}$ percentile). 
* **Crucial Symmetrical Feature:** Because the top 20% cutoff is applied within each innings, 2nd-innings chases do not drown out 1st-innings leverage deliveries (such as death-overs total-setting or Powerplay collapses).

### Empirical Validation: Proof that Pressure Separates Stress
Our empirical analysis verifies that this threshold successfully isolates high-stress game states:
* **Batting Strike Rate Escalation:** Increases from 136.6 to **156.8** in 1st innings and 135.6 to **146.6** in 2nd innings.
* **Dismissal Hazard Spike:** Dismissals jump from 4.8% to **7.5% per 100 balls** (+56.3% higher dismissal risk).
* **Bowling Wicket Strike Rate:** Jumps from 4.54 to **6.62 wickets per 100 balls** (+45.8% increase in wicket density).

---

## 3. Performance Measurement: The 4-Pillar Valuation Architecture

To evaluate players fairly without rewarding small-sample flukes or punishing high-volume anchors, we engineered a multi-pillar valuation model:

$$\text{Composite Score} = \left(0.35 \cdot Z_{\text{impact}} + 0.25 \cdot Z_{\text{baseline}} + 0.15 \cdot Z_{\text{resilience}} + 0.25 \cdot Z_{\text{consistency}}\right) \times 10 + 50$$

### Pillar Breakdown
1. **Pillar 1: High-Leverage Impact (35% Weight):**  
   Win Probability Added (WPA) per 100 pressure balls. Shrunk via Empirical Bayesian priors ($N_0 = 60$ for batters, $N_0 = 70$ for bowlers) toward the population mean:
   $$\hat{\theta}_i = \frac{N_i}{N_i + N_0}\bar{X}_i + \frac{N_0}{N_i + N_0}\mu$$
2. **Pillar 2: Baseline Quality Floor (25% Weight):**  
   Net Runs Above Replacement (RAR) per 100 balls across normal, non-pressure deliveries. Ensures that top-ranked players possess proven, world-class foundational skill.
3. **Pillar 3: Resilience Delta (15% Weight):**  
   Performance differential: $\Delta = \text{Performance}_{\text{Pressure}} - \text{Performance}_{\text{Normal}}$. Measures whether a cricketer levels up or wilts under pressure.
4. **Pillar 4: Situational Consistency (25% Weight):**  
   The hit rate of individual innings: percentage of high-leverage match appearances where the player generated positive net WPA. Rewards dependable game-in, game-out execution over single-match outliers.

---

## 4. Fair Comparisons, Eligibility & Competition Context

### 1. Eligibility Thresholds
To eliminate noise from small samples and unviable profiles, players had to meet four strict criteria:
* Minimum **60 high-pressure deliveries**.
* Minimum **12 high-pressure innings or spells**.
* Minimum **30 pressure deliveries in the Indian Premier League**.
* Active in the recent 2025–2026 cricket cycle.  
*(Leaves 55 eligible batters and 64 eligible bowlers)*.

### 2. Competition Quality Weighting
* **IPL Matches:** Weighted at **1.0** (benchmark competition; highest tactical intensity and global talent concentration).
* **T20 Internationals:** Weighted at **0.7** (accounts for varying opponent strength in bilateral series).

### 3. Recency Time-Decay
An exponential recency decay with a **half-life of 2.5 years** was applied, giving greater weight to 2024–2026 form while maintaining sufficient sample volume from 2022–2023.

---

## 5. Reliability, Uncertainty & The Split-Half Persistence Paradox

### The Discovery: Batting Stochasticity vs. Bowling Repeatability
A central finding of this research is the stark divergence in split-half cross-validation reliability:
* **Batting Clutch Correlation:** $r = 0.07$ (Low persistence)
* **Bowling Clutch Correlation:** $r = 0.31$ (Moderate-to-high persistence)

### Cricket Domain Reasoning
In modern T20 cricket, lower-order batting at >180 SR is inherently binary: the difference between a top-edge flying for six over third-man versus settling in the wicketkeeper's gloves is measured in millimeters. Over 20–30 balls, batting outcomes in high leverage contain substantial variance. Therefore, **batters in ranks 5 through 15 should be evaluated as a fluid tactical tier rather than a strict rigid hierarchy**.

Conversely, bowling execution (hitting yorkers, disguising off-pace cutters, controlling line outside off-stump) is a repeatable physical skill. Elite death bowlers (Bumrah, Narine, Hazlewood) consistently replicate run suppression and wicket taking across seasons, making them premier high-expenditure targets in auction planning.

### 150-Iteration Bootstrap Resampling
Running 150 bootstrap resamples confirms that our top-tier targets are exceptionally stable:
* **Shreyas Iyer:** Top-10 in 93% of resamples (median rank #2).
* **Tim David:** Top-10 in 95% of resamples (median rank #3).
* **Jasprit Bumrah:** Top-10 in 91% of resamples (median rank #4).
* **Sunil Narine:** Top-10 in 79% of resamples (median rank #4).

---

## 6. Strategic Takeaways for Rajasthan Royals

1. **Solving the Finishing Deficit (Overs 16–20):**  
   RR batters at #6 and #7 strike at only **157.0** in leverage (compared to the league average of **165.4**). Targeting **Tim David** (186.0 pressure SR, 66% death exposure) or domestic sensation **Ashutosh Sharma** (193.0 pressure SR, 96% death exposure) directly erases this deficit.
2. **Solving the Death Wicket Deficit:**  
   RR bowlers take only **7.28 wickets/100 balls** at the death in leverage versus the league benchmark of **8.27**. Acquiring **Josh Hazlewood** (8.3 wickets/100 balls in leverage) or **Nathan Ellis** provides the tactical strike power needed in championship moments.

---

**Interactive Dashboard Access:**  
Candidates and judges can explore the complete interactive decision-support engine, tune live weights, and inspect player dossiers at the companion portal created for this submission.
