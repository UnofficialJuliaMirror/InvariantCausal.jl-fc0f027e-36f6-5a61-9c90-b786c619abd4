__precompile__()

module InvariantCausal

    export testConditionalIndep, causalSearch, screen_lasso, two_sample_chow,
           GaussianSEM, simulate, causes, cov, random_gaussian_SEM, random_noise_intervened_SEM

    include("conditionalIndepTests.jl")
    include("causalSearch.jl")
    include("SEM.jl")
    include("screening.jl")

    function _test_full()
        include(joinpath(@__DIR__, "..", "test", "test_full.jl"))
    end

end