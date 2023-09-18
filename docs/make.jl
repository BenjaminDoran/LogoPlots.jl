using LogoPlots
using Documenter

DocMeta.setdocmeta!(LogoPlots, :DocTestSetup, :(using LogoPlots); recursive=true)

makedocs(;
    modules=[LogoPlots],
    authors="Benjamin Doran",
    repo="https://github.com/BenjaminDoran/LogoPlots.jl/blob/{commit}{path}#{line}",
    sitename="LogoPlots.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://BenjaminDoran.github.io/LogoPlots.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/BenjaminDoran/LogoPlots.jl",
    devbranch="main",
)
