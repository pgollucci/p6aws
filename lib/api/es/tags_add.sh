######################################################################
#<
#
# Function:
#	p6_aws_es_tags_add(arn, tag_list)
#
#  Args:
#	arn - 
#	tag_list - 
#
#>
######################################################################
p6_aws_es_tags_add() {
    local arn="$1"
    local tag_list="$2"
    shift 2

    p6_run_write_cmd aws es add-tags --arn $arn --tag-list $tag_list "$@"
}