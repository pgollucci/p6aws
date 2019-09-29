######################################################################
#<
#
# Function:
#      = p6_aws_ce_reservation_coverage_get(time_period)
#
# Arg(s):
#    time_period - 
#
#
#>
######################################################################
p6_aws_ce_reservation_coverage_get() {
    local time_period="$1"
    shift 1

    p6_run_read_cmd aws ce get-reservation-coverage --time-period $time_period "$@"
}