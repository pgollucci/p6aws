######################################################################
#<
#
# Function:
#      = p6_aws_mturk_additional_assignments_for_hit_create(hit_id, number_of_additional_assignments)
#
# Arg(s):
#    hit_id - 
#    number_of_additional_assignments - 
#
#
#>
######################################################################
p6_aws_mturk_additional_assignments_for_hit_create() {
    local hit_id="$1"
    local number_of_additional_assignments="$2"
    shift 2

    p6_run_write_cmd aws mturk create-additional-assignments-for-hit --hit-id $hit_id --number-of-additional-assignments $number_of_additional_assignments "$@"
}