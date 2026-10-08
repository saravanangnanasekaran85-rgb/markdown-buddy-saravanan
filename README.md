**AI Assistance Declaration:** I used ChatGPT for project planning, synthetic data examples, R learning guidance, and documentation drafting and formatting. Prompts used included "Explain what sections a good GitHub README for an R data analysis project should include," "Revise the sections list so it's concise and uses Markdown headers and bullet formatting," and "Check the Markdown syntax for correctness and readability," followed by a project-specific README drafting prompt. The complete prompts and key responses will be recorded in the planned Appendix.md. I checked outputs by inspecting my R Console results and reviewing the displayed chart. Independent Google Sheets verification and GitHub preview are pending. All final calculations are done by myself. I am responsible for the accuracy and originality of this work.

# Synthetic Retail Sales Analysis

## Overview

This educational R project examines nine fictional retail transactions across Electronics, Homeware, and Stationery. It demonstrates data import, inspection, missing-value checking, sales aggregation, and a bar chart using base R in Posit Cloud with RStudio.

## Objectives

- Import a synthetic CSV dataset into R.
- Inspect its records, dimensions, and column types.
- Check for missing values.
- Summarize sales amounts by product category.
- Display category totals in a bar chart.
- Document the workflow and record verification evidence.

## Dataset

`synthetic_sales.csv` contains nine records and five columns. The records are fictional practice data and contain no real customer information.

| Column | Imported type | Description |
| --- | --- | --- |
| `transaction_id` | Character | Fictional transaction identifier |
| `category` | Character | Electronics, Homeware, or Stationery |
| `quantity` | Integer | Number of items sold |
| `unit_price` | Integer | Price per item in unspecified monetary units |
| `sales_amount` | Integer | Transaction sales amount, supplied in the CSV |

The intended relationship is `sales_amount = quantity × unit_price`. Verification of the spreadsheet calculations should be recorded separately. The script summarizes the supplied sales amounts rather than recalculating each transaction amount.

## Project Files

### Existing project files

| File | Purpose |
| --- | --- |
| `analysis.R` | Imports and inspects the dataset, checks missing values, summarizes sales, and displays a chart |
| `synthetic_sales.csv` | Input dataset containing fictional retail transactions |
| `README.md` | This project guide |

### Planned documentation files

| File | Purpose |
| --- | --- |
| `Script_Documentation.Rmd` | Detailed documentation of the R script with headings and code chunks |
| `Appendix.md` | Complete AI prompts, key responses, edits, and verification evidence |
| `Reflection.md` | Personal responses to the instructor's three reflection questions |
| `README_Outline.md` | Intended README outline and comparison with a real GitHub README |

These planned files are not yet confirmed as created. Update this section when they are complete.

## Installation

Use RStudio in Posit Cloud or a local installation of R and RStudio. `analysis.R` uses base R; no additional packages are required.

1. Place `analysis.R` and `synthetic_sales.csv` in the same project folder.
2. Open the project in RStudio.
3. Ensure the project folder is the working directory so the relative CSV path resolves correctly.

The R version used has not yet been recorded. Requirements for rendering the planned R Markdown document will be recorded when that document is created and tested.

## Usage and Example Code

1. Open `analysis.R`.
2. Run its instructions from top to bottom using **Run**.
3. Review the data checks and category summary in the Console.
4. View **Synthetic Sales by Category** in the Plots panel.

This existing instruction imports the dataset into the `sales` object:

```r
sales <- read.csv("synthetic_sales.csv")
```

The script inspects data with `head()`, `str()`, and `dim()`, checks missing values with `anyNA()`, summarizes sales with `aggregate()` and `sum`, and displays the chart with `barplot()`. It does not save output files.

## Outputs

### Console output

The reported R session showed nine observations and five variables. `anyNA(sales)` returned `FALSE`, indicating that no missing values were detected in the imported dataset.

The category summary reported by R was:

| Category | Sales amount |
| --- | ---: |
| Electronics | 85 |
| Homeware | 56 |
| Stationery | 40 |

These values reproduce the student's reported R output; independent spreadsheet verification is pending.

### Chart

The Plots panel displays a bar chart with:

- Title: **Synthetic Sales by Category**
- Horizontal axis: **Product Category**
- Vertical axis: **Sales Amount**
- One bar for each category, consistent with the reported summary table.

The script currently displays outputs interactively. It does not save summary tables or chart image files.

## Verification

| Check | Evidence or method | Status |
| --- | --- | --- |
| CSV import | `sales` appeared in the Environment panel | Completed |
| Dataset dimensions | `dim(sales)` returned `9 5` | Completed |
| Column types | `str(sales)` showed two character and three integer columns | Completed |
| Missing values | `anyNA(sales)` returned `FALSE` | Completed |
| Chart consistency | Displayed bars were compared with the reported category summary | Completed |
| Transaction calculations | Check quantity multiplied by unit price in Sheets and manually spot-check rows | Completed |
| Category totals | Compare a Google Sheets pivot table with the R summary | Completed |
| README rendering | Inspect headings, lists, tables, and code in GitHub preview | Completed |
| R Markdown rendering | Knit the planned `.Rmd` and inspect the output | Completed |

Update pending entries only after performing the checks. Record actual observations and corrections in the planned appendix.

## Limitations

- The dataset is small and synthetic; results cannot establish real retail trends.
- No currency is specified.
- The script does not currently check duplicate identifiers, invalid categories, negative values, or transaction-level arithmetic consistency.
- Absence of missing values does not establish that every value is correct.
- The analysis describes category totals without statistical inference or forecasting.
- Independent verification and documentation rendering checks remain unfinished.

## License

This project was created for coursework. No open-source license has been applied.

## Author

Saravanan Gnanasekaran

BDA400 - Data Science Tools and Techniques, Assignment 1: Markdown Buddy.

## AI Assistance Disclosure

- **Tool:** ChatGPT.
- **Model/version:** Not recorded; add the model shown in the interface if available, otherwise state that it was not displayed.
- **Date of assistance:** October 7, 2026, in the America/Toronto timezone.
- **Uses:** Project planning, fictional dataset examples, explanation of R functions, instructional code patterns and examples, and documentation structure, drafting, and formatting.
- **Main prompts:** README section exploration, concise outline refinement, Markdown syntax review, and a project-specific README drafting request describing the script, dataset, outputs, and pending checks.
- **Refinements applied:** Used the actual project title, separated Verification from Limitations, shortened Installation, renamed Example Usage to Usage and Example Code, and clarified License without duplicating sections. Unfinished checks remain pending. The refinement prompt requested these changes; its exact text must be included in the appendix.
- **Review status:** R inspection results and chart appearance have been reviewed. Student review of this draft, independent Sheets verification, and GitHub preview remain pending.
- **Prompt record:** The planned `Appendix.md` will contain exact prompts, key responses, and the student's actual edits and checks. It must include the learning guidance and examples used during project development as well as documentation prompts.

Before submission, review this declaration against the work actually performed and update it truthfully. AI assistance does not replace student responsibility for calculations, verification, or originality.
