@info "Starting precompile exec."

import Pluto

session = Pluto.ServerSession()

nb_path = joinpath(@__DIR__(), "notebook.jl")

@info "Loading sample notebook"
nb = Pluto.load_notebook(Pluto.tamepath(nb_path));
session.notebooks[nb.notebook_id] = nb;

@info "Running sample notebook"
Pluto.update_save_run!(session, nb, nb.cells; run_async=false, prerender_text=true)

# nice! we ran the notebook, so we already precompiled a lot

@info "Precompile exec finished."