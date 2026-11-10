---
name: full-flow
description: Trigger this if the user says 'full flow'.
---

# Full Flow

Take the work from the request to a merged PR without the user. Run these steps in order:

1. Follow `full-stop` until the PR is ready to merge. This includes the sol-loop review.
2. Run `council` on the PR until every delegate is satisfied. Get proof for each fix as `full-pr` describes.
3. Merge with full-pr's merge gate and merge rules. Do not run sol-loop again.

full-pr's permissions, path autonomy, and rules for asking the user apply to the whole flow. full-stop's no-merge rule ends at step 3.

Report as full-pr does, and include the council results.
