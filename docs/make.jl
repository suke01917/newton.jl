using newton
using Documenter

DocMeta.setdocmeta!(newton, :DocTestSetup, :(using newton); recursive=true)

makedocs(;
    modules=[newton],
    authors="suke01917 <sukesyun0917@icloud.com>",
    repo="https://github.com/suke01917/newton.jl/blob/{commit}{path}#{line}",
    sitename="newton.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://suke01917.github.io/newton.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/suke01917/newton.jl",
    devbranch="master",
)
