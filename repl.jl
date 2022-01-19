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

# test debug
# julia> using LittleManComputer

# julia> ENV["JULIA_DEBUG"] = "all"
# "all"

# julia> assemble("examples/count-down.lmc")
# ┌ Debug: found labels
# │   labels =
# │    Dict{String, Int64} with 3 entries:
# │      "count" => 8
# │      "loop"  => 1
# │      "one"   => 7
# └ @ LittleManComputer ~/Code/FourM/Study/Julia/LittleManComputer.jl/src/assembler.jl:122
# ┌ Debug: parsed line 1:
# │   line = "        INP"
# │   words = 1-element Vector{SubString{String}}: …
# │   instruction = 901
# └ @ LittleManComputer ~/Code/FourM/Study/Julia/LittleManComputer.jl/src/assembler.jl:137
# ┌ Debug: parsed line 2:
# │   line = "loop    OUT"
# │   words = 2-element Vector{SubString{String}}: …
# │   instruction = 902
# └ @ LittleManComputer ~/Code/FourM/Study/Julia/LittleManComputer.jl/src/assembler.jl:137
# ┌ Debug: parsed line 3:
# │   line = "        STA count"
# │   words = 2-element Vector{SubString{String}}: …
# │   instruction = 308
# └ @ LittleManComputer ~/Code/FourM/Study/Julia/LittleManComputer.jl/src/assembler.jl:137
# ┌ Debug: parsed line 4:
# │   line = "        SUB one"
# │   words = 2-element Vector{SubString{String}}: …
# │   instruction = 207
# └ @ LittleManComputer ~/Code/FourM/Study/Julia/LittleManComputer.jl/src/assembler.jl:137
# ┌ Debug: parsed line 5:
# │   line = "        STA count"
# │   words = 2-element Vector{SubString{String}}: …
# │   instruction = 308
# └ @ LittleManComputer ~/Code/FourM/Study/Julia/LittleManComputer.jl/src/assembler.jl:137
# ┌ Debug: parsed line 6:
# │   line = "        BRP loop"
# │   words = 2-element Vector{SubString{String}}: …
# │   instruction = 801
# └ @ LittleManComputer ~/Code/FourM/Study/Julia/LittleManComputer.jl/src/assembler.jl:137
# ┌ Debug: parsed line 7:
# │   line = "        HLT"
# │   words = 1-element Vector{SubString{String}}: …
# │   instruction = 0
# └ @ LittleManComputer ~/Code/FourM/Study/Julia/LittleManComputer.jl/src/assembler.jl:137
# ┌ Debug: parsed line 8:
# │   line = "one     DAT 1"
# │   words = 3-element Vector{SubString{String}}: …
# │   instruction = 1
# └ @ LittleManComputer ~/Code/FourM/Study/Julia/LittleManComputer.jl/src/assembler.jl:137
# ┌ Debug: parsed line 9:
# │   line = "count   DAT "
# │   words = 2-element Vector{SubString{String}}: …
# │   instruction = 0
# └ @ LittleManComputer ~/Code/FourM/Study/Julia/LittleManComputer.jl/src/assembler.jl:137
# 9-element Vector{Int64}:
#  901
#  902
#  308
#  207
#  308
#  801
#    0
#    1
#    0
