@info "Starting precompile exec."

using DataFrames

DataFrame(x = rand(100))

#using CairoMakie
#CairoMakie.activate!(type = "png")
#display(scatter(rand(100), rand(100)))

@info "Precompile exec finished."