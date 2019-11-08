#!/bin/sh

main() {

    . ../p6common/lib/_bootstrap.sh
    p6_bootstrap "../p6common"

    . ../p6test/lib/_bootstrap.sh
    p6_p6test_bootstrap "../p6test"

    . lib/cfg.sh

    p6_test_setup "3"

    p6_test_start "cfg"
    (
	p6_test_run "echo 1"
	p6_test_assert_run_ok "echo is blank"
    )
    p6_test_finish

    p6_test_teardown
}

main "$@"
