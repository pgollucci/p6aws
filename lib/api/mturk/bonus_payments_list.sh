######################################################################
#<
#
# Function:
#      = p6_aws_mturk_bonus_payments_list()
#
#
#
#>
######################################################################
p6_aws_mturk_bonus_payments_list() {

    p6_run_read_cmd aws mturk list-bonus-payments "$@"
}