# This works like MixIns in Ruby

p6_return_aws_arn() {
    local arn="$1"

    p6__return "$arn"
}

p6_return_aws_account_id() {
    local account_id="$1"

    p6__return "$account_id"
}

p6_return_aws_resource_id() {
    local resource_id="$1"

    p6__return "$resource_id"
}

p6_return_aws_logical_id() {
    local logical_id="$1"

    p6__return "$logical_id"
}

