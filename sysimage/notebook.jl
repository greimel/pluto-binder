### A Pluto.jl notebook ###
# v0.12.20

using Markdown
using InteractiveUtils

# ╔═╡ c7faa3e6-72fd-11eb-1b1c-cff28ec840c7
#using Pkg; Pkg.activate(@__DIR__())

# ╔═╡ 2365b56c-72fd-11eb-2fb3-fb247a857b01
using CairoMakie

# ╔═╡ 01044994-72fe-11eb-1e12-c1cf87f4216c
using DataFrames

# ╔═╡ 5cfe5194-72ff-11eb-329a-9934d15a20a9
md"""
# A Dummy Notebook for PackageCompiler.jl
"""

# ╔═╡ 415a2582-72fd-11eb-207e-a7459239116c
CairoMakie.activate!(type = "png")

# ╔═╡ 47bbca66-72fd-11eb-2485-ffe43809bbc3
begin
	fig = Figure()
	ax = Axis(fig[1,1])
	
	scatter!(ax, rand(100), rand(100), label = "bla")
	
	Legend(fig[1,2], ax)
	
	fig |> display
end

# ╔═╡ 033b6f1c-72fe-11eb-1cba-7da643d154c9
DataFrame(x = rand(100))

# ╔═╡ Cell order:
# ╟─5cfe5194-72ff-11eb-329a-9934d15a20a9
# ╠═c7faa3e6-72fd-11eb-1b1c-cff28ec840c7
# ╠═2365b56c-72fd-11eb-2fb3-fb247a857b01
# ╠═415a2582-72fd-11eb-207e-a7459239116c
# ╠═47bbca66-72fd-11eb-2485-ffe43809bbc3
# ╠═01044994-72fe-11eb-1e12-c1cf87f4216c
# ╠═033b6f1c-72fe-11eb-1cba-7da643d154c9
