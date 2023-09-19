# LogoPlots

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://BenjaminDoran.github.io/LogoPlots.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://BenjaminDoran.github.io/LogoPlots.jl/dev/)
[![Build Status](https://github.com/BenjaminDoran/LogoPlots.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/BenjaminDoran/LogoPlots.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/BenjaminDoran/LogoPlots.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/BenjaminDoran/LogoPlots.jl)

Very basic plotting recipe for bioinformatics sequence logos

## Install 

For now

```julia
julia> ]add git@github.com:BenjaminDoran/LogoPlots.jl.git
```

**WARNING**: this repository is likely to change, at this point I am making no promises of stability.

After it is more stable, I will probably register in the main registry

## Examples 

```julia

using StatsPlots
using LogoPlots

m = rand(4, 10);
rownames = ["A", "C", "G", "T"]

plot(title="random motif", ylabel="probability", 
    size=(800, 400), 
    margin=5Plots.mm, 
    legend=:outertop, legendcolumns=4,
    # background_color_inside=:lightgrey
)
logoplot!(m, rownames; 
    do_norm=true, 
    ignore_case=false, 
    colors=[1:5...]'
)
```

<img width="663" alt="image" src="https://github.com/BenjaminDoran/LogoPlots.jl/assets/20494558/a9c1f7d9-a520-47eb-9ea8-bcf7065ab8b8">

Args: 
* do_norm: whether to normalize each column by its sum i.e. `col/sum(col)`
* ignore_case: capitalize all `rownames`

colors can be adjusted by passing a row vector of hexcode colors `["#ffffff", ...]` or integers (which uses the default Plots palette). Without passing a color keyword it will use the amino-acid color palette from [`gglogo`](https://github.com/heike/gglogo) and gray if the character is not an amino-acid code. 

If the characters in `rownames` are not in a-zA-Z0-9\* it will default to plotting a rectangle in place of that character.




## Citing

See [`CITATION.bib`](CITATION.bib) for the relevant reference(s).
