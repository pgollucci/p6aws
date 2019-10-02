######################################################################
#<
#
# Function:
#	p6_aws_polly_lexicon_put(name, content)
#
#  Args:
#	name - 
#	content - 
#
#>
######################################################################
p6_aws_polly_lexicon_put() {
    local name="$1"
    local content="$2"
    shift 2

    p6_run_write_cmd aws polly put-lexicon --name $name --content $content "$@"
}