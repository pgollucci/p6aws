######################################################################
#<
#
# Function:
#      = p6_aws_ce_reservation_utilization_get(time_period)
#
# Arg(s):
#    time_period - 
#
#
#>
######################################################################
p6_aws_ce_reservation_utilization_get() {
    local time_period="$1"
    shift 1

    p6_run_read_cmd aws ce get-reservation-utilization --time-period $time_period "$@"
}