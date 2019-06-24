//
// Created by mfbut on 11/6/2017.
//

#ifndef DYNAMIC_2D_MULT_H
#define DYNAMIC_2D_MULT_H
int** make_mult_table(const int num_rows, const int num_cols);
void print_table(int** mat, const int num_rows, const int num_cols);
void delete_table(int*** mat, const int num_rows, const int num_cols);
int** add_row(int*** mat, int* num_rows, const int num_cols);
#endif //DYNAMIC_2D_MULT_H
