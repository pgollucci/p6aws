######################################################################
#<
#
# Function:
#	p6_aws_mturk_reviewable_hits_list()
#
#>
######################################################################
p6_aws_mturk_reviewable_hits_list() {

    p6_run_read_cmd aws mturk list-reviewable-hits "$@"
}