# US State Political Voting Segmentation (1912–1976)

## Project Overview

This project applies unsupervised machine learning techniques to segment US states based on long-term Republican voting percentages across 17 presidential elections (1912–1976).

Using hierarchical clustering and k-means, the analysis identifies structural political alignment patterns and evaluates the robustness of clustering results across algorithms.

The objective is to uncover stable regional voting behavior patterns from multivariate time-series data.

---

## Objective

- Segment 47 US states based on historical voting behavior  
- Identify structural political alignment patterns  
- Compare hierarchical clustering and k-means clustering results  
- Evaluate cluster robustness and interpret characteristics  

---

## Dataset

**File:** `voter.csv`  
**Observations:** 47 US states (3 removed due to missing data)  
**Features:** 17 presidential elections (1912–1976)  
**Values:** Percentage of votes given to the Republican candidate  

Each row represents a state.  
Each column represents vote percentage in a specific election year.

---

## Analytical Approach

### Data Preparation
- Loaded data in R
- Verified structure and removed missing observations
- Standardized variables to ensure equal weighting across election years

---

### Hierarchical Clustering

- **Distance Metric:** Euclidean distance  
- **Linkage Method:** Ward’s method (minimizes within-cluster variance)  
- Visualized results using dendrogram  
- Cut dendrogram to produce **3 clusters**

#### Rationale:
Ward’s method was chosen for its ability to create compact, spherical clusters and minimize intra-cluster variability.

---

### Cluster Interpretation

After cutting the dendrogram at k = 3:

- **Cluster 1:** Strong Republican-leaning states (consistently higher vote percentages)
- **Cluster 2:** Competitive / swing-pattern states
- **Cluster 3:** Historically Democratic-leaning states (lower Republican vote share)

Cluster characteristics were derived by examining average voting percentages across elections within each cluster.

---

### K-Means Clustering (k = 3)

- Applied k-means with k = 3
- Compared cluster membership to hierarchical clustering results
- Observed high structural similarity between methods

#### Validation Insight:
Consistency between hierarchical clustering and k-means indicates robust segmentation structure within the dataset.

---

## Key Findings

- States naturally group into three distinct political behavior segments.
- Clusters reflect long-term alignment rather than single-election anomalies.
- Both hierarchical and k-means clustering produce comparable groupings.
- Multivariate clustering effectively summarizes 17 election variables into 3 interpretable state groups.

---

## Strategic Relevance

Although applied to political data, this methodology demonstrates real-world applications in:

### Market Segmentation
Group customers or regions based on behavioral similarity.

### Longitudinal Behavior Analysis
Identify stable patterns in time-series data.

### Regional Strategy Planning
Support campaign, marketing, or investment allocation strategies.

### Model Validation
Compare clustering algorithms to ensure segmentation robustness.

---

## Visualizations

- Dendrogram (Hierarchical Clustering)
- Cluster Membership Assignment
- Comparative Cluster Analysis (Hierarchical vs K-Means)

---

## Tools & Techniques

- R
- Hierarchical Clustering
- Ward’s Linkage
- K-Means Clustering
- Distance Metrics (Euclidean)
- Dendrogram Analysis
- Cluster Validation
- Data Standardization

---

## Skills Demonstrated

- Unsupervised Machine Learning
- Multivariate Time-Series Analysis
- Clustering Algorithm Comparison
- Model Validation & Interpretation
- Analytical Storytelling
- Structured Reproducible Workflow

---

## Author

**Nida Muhammad Umer**  
Data Analyst | Statistical Machine Learning | Segmentation & Multivariate Analysis

