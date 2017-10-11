#pragma once

#define EOK 0
#define EFOO 1
#define EBAR 2
#define EBAZ 3

#define error(err, err_no, label) {err = err_no; goto label;}
