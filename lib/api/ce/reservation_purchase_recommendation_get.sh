######################################################################
#<
#
# Function:
#	p6_aws_ce_reservation_purchase_recommendation_get(service)
#
#  Args:
#	service - 
#
#>
######################################################################
p6_aws_ce_reservation_purchase_recommendation_get() {
    local service="$1"
    shift 1

    p6_run_read_cmd aws ce get-reservation-purchase-recommendation --service $service "$@"
}