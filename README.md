# PS1 CHEME-5660 Fall 2023
The objective of `PS1` is to familiarize students with computing the prices of Treasury Bills, Notes, and Bonds and to compare simulations of the change in the prices of these instruments with the five theorems proposed by Malkiel:

* [Malkiel, B. G. (1962). Expectations, Bond Prices, and the Term Structure of Interest Rates. The Quarterly Journal of Economics, 76(2), 197–218. https://doi.org/10.2307/1880816](https://www.jstor.org/stable/1880816https://www.jstor.org/stable/1880816)

Malkiel proposed five theorems that govern the price of fixed-income debt securities, e.g., Treasury Bills, Notes, and Bonds, as a function of the duration and yield values. In `PS1`, let's simulate Theorem 5:
> Theorem 5: The higher the coupon carried by the bond, the smaller the percentage price fluctuation for a given change in yield

### Team
`PS1` can be done in teams. List the members of your team here.

## Problem Statement
We selected a `T = 30-year` United States Treasury bond that was auctioned off on `08/10/23` and issued on `08/15/2023` to test Theorem 5. The bond had the following characteristics:
* The `T = 30-year` bond has an interest rate of `0.04125`, a yield of `0.04189`, and a price per $100 face value of `98.912672`.

Simulate the bond price for the next for $\pm~20$-percent changes in the coupon rate and yield. Does the simulation support Theorem 5? Put your analysis results here.

## Implementation
The simulation implementation is in the `main(...)` function in the `Submit.jl` file. To execute the simulation, Start `Julia` from the command line in a VSCode terminal window (in the directory where the `Submit.jl` file is located):

```zsh
julia --project=.
```

Once the Julia REPL starts, execute the following command:

```julia
include("Submit.jl")
```

This will run the `main(...)` method in the `Submit.jl` file, and spit out a table with the simulation results. 
* Your job is to complete the implementation of the `main(...)` method in the `Submit.jl` file and analyze the simulation results. 

### Expected results
Your code _should_ produce a `3`$\times$`3` grid of percentage change values for the bond price for $\pm~20$-percent changes in the coupon rate (rows) and yield (columns). Your results should look __something__ like the following (your numbers may be different):

|                | -20% yield | nominal yield | +20% yield |
|----------------|------------|---------------|------------|
|    -20% coupon |       0.12 |        -14.17 |      -25.8 |
| nominal coupon |      15.83 |           0.0 |     -12.95 |
|    +20% coupon |      31.54 |         14.17 |       -0.1 |

## Submission
Once complete, you can submit your assignment by checking in your code to your local git repository and pushing your changes to the remote repository. All can be done with a few clicks in the [GitHub Desktop](https://desktop.github.com) application. 

## Grading and deadlines
The grading rubric will be posted on Canvas. The first deadline will be Sunday, 10/08/2023, by 11:59 PM. We'll score the initial submission and reopen the repository for open-ended revisions. Your ultimate revised score will be used for the course grade __NOT THE INITIAL SCORE__. 

## Help
`PS1` is a challenging assignment. If you are stuck, please ask for help. You can ask questions in class, post questions on the `Discussion` forum for the course, or email the instructor or TAs. Specific resources:
* If you are having code/GitHub issues, check out the [Julia documentation](https://docs.julialang.org/en/v1/) or the [GitHub Desktop documentation](https://docs.github.com/en/desktop).
* In `PS1`, you have to work with `Arrays` in `Julia`. Check out the [Julia documentation](https://docs.julialang.org/en/v1/base/arrays/) for more information.
* In `PS1`, you have to work with `Loops` in `Julia`. Check out the [Julia documentation](https://docs.julialang.org/en/v1/manual/control-flow/#man-loops-1) for more information.
* Another hint, check out the [deepcopy function](https://docs.julialang.org/en/v1/base/copy/#Base.deepcopy) in `Julia`.
* Lastly, for questions updating your `README.md` file, [check out the GitHub markdown documentation](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)
