# Inspired by
# * https://github.com/fonsp/pluto-on-binder/blob/compiler/postBuild
# * https://github.com/bat/batjl-environment/blob/master/build_sysimage.jl

import Pkg

srcdir = @__DIR__
Pkg.activate(srcdir)

@info("Building custom system image in project \"$srcdir\".")

@info("Instantiating project.")
Pkg.instantiate()

@info("Precompiling packages.")
Pkg.precompile()

proj = Pkg.API.project();
pkgs = Symbol.(keys(proj.dependencies))
proj.ispackage && push!(pkgs, Symbol(proj.name))

@info("Package to include in system image: $(join(pkgs, " "))")

@info("Building system image.")

import PackageCompiler, Libdl

sysimage_path = joinpath(srcdir, "JuliaSysimage." * Libdl.dlext)

PackageCompiler.create_sysimage(
    Symbol.(pkgs),
    sysimage_path = sysimage_path,
    precompile_execution_file = joinpath(srcdir, "pkgcompile_exec.jl"),
    cpu_target = PackageCompiler.default_app_cpu_target(),
    replace_default = false
)

@info("Created custom Julia system image \"$sysimage_path\".")
