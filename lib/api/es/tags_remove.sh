######################################################################
#<
#
# Function:
#	p6_aws_es_tags_remove(arn, tag_keys)
#
#  Args:
#	arn - 
#	tag_keys - 
#
#>
######################################################################
p6_aws_es_tags_remove() {
    local arn="$1"
    local tag_keys="$2"
    shift 2

    p6_run_write_cmd aws es remove-tags --arn $arn --tag-keys $tag_keys "$@"
}