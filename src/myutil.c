#include "darknet.h"
#include "myutil.h"

#include <stdio.h>

void print_float_array(float *array) {
    for (int i = 0; i < PRINT_LIMIT; ++i) {
        printf("%03d: %.04f\n", i, array[i]);
    }
}

void print_box_label(box_label *box) {
    printf("id=%d, x=%.04f, y=%.04f, w=%.04f, h=%.04f, left=%.04f, right=%.04f, top=%.04f, bottom=%.04f\n", box->id, box->x, box->y, box->w, box->h, box->left, box->right, box->top, box->bottom);
}