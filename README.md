#Passgen for Julia 0.2.2
The julia port is superior to the python version in terms of speed and size
<br>
#Requirements
Julia 0.4 and higher(If using an older version you'll have to change AbstractString to String manually as of version 0.2.2)
<br>
Nettle - Pkg.add("nettle") in REPL
<br>
<br>
<br>
Arguments: "julia passgen.jl -l 10 -n"
<br>
           "julia passgen.jl [character set] [length] [type]"
<br>


#Character set lists
-l lowercase
<br>
-u uppercase
<br>
-n numeral
<br>
Alternates for the switches are as followed and correspond to the list above
<br>
-lu, -ln, -un, -lun
<br>
-b32 creates a base32 generation
<br>
#Type switches
-norm normal generation
<br>
-perm permutation on each generation until competed and then follows to the next generation...etc
<br>
-ntlm generation md4 hashes based on the character generation
<br>
<br>
<br>
The Python version of this script will continue to be located on the repository but will no longer be updated in favor of the Julia port, If any new features arrive in the Julia port you wish to have in Python you are welcome to clone my repo and port it yourself.

#Changelog
This will be updated once we have fully finished the porting of the code and have the necessary features installed.
<br>
As of right now you can check the git changes.
