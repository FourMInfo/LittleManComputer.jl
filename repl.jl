# julia> using LittleManComputer

# julia> program = assemble("examples/add-two-inputs.lmc")
# 7-element Vector{Int64}:
#  901
#  306
#  901
#  106
#  902
#    0
#    0

# alternate playing with paths (got here when mispelled file name and was trying to find correct file)
# julia> cd(joinpath(pwd(),"examples"))

# julia> pwd()
# "/Users/aronet/Code/FourM/Study/Julia/LittleManComputer.jl/examples"

# julia> readdir(pwd())
# 12-element Vector{String}:
#  "add-two-inputs.lmc"
#  "add-two-inputs.machine"
#  "bad-program.lmc"
#  "count-down.lmc"
#  "count-down.machine"
#  ⋮
#  "maximizer.lmc"
#  "multiply.lmc"
#  "myself.lmc"
#  "square.lmc"


# julia> program = assemble(joinpath(pwd(),"add-two-inputs.lmc"))
# 7-element Vector{Int64}:
#  901
#  306
#  901
#  106
#  902
#    0
#    0

# julia> simulate!(program, [4, 5])
# 1-element Vector{Int64}:
#  9

# julia> simulate!(program, [4, 5], callback=simcallback)
# 0:901   Accu: 0  // INP
# 1:306   Accu: 4  // STA 6
# 2:901   Accu: 4  // INP
# 3:106   Accu: 5  // ADD 6
# 4:902   Accu: 9  // OUT
# 5:0     Accu: 9  // HLT
# 1-element Vector{Int64}:
#  9
