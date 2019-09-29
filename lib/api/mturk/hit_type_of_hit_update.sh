######################################################################
#<
#
# Function:
#      = p6_aws_mturk_hit_type_of_hit_update(hit_id, hit_type_id)
#
# Arg(s):
#    hit_id - 
#    hit_type_id - 
#
#
#>
######################################################################
p6_aws_mturk_hit_type_of_hit_update() {
    local hit_id="$1"
    local hit_type_id="$2"
    shift 2

    p6_run_write_cmd aws mturk update-hit-type-of-hit --hit-id $hit_id --hit-type-id $hit_type_id "$@"
}