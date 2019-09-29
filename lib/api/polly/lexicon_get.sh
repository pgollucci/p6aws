######################################################################
#<
#
# Function:
#      = p6_aws_polly_lexicon_get(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_polly_lexicon_get() {
    local name="$1"
    shift 1

    p6_run_read_cmd aws polly get-lexicon --name $name "$@"
}