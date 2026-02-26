#include <stdio.h>


typedef struct{
    char name[20];
    float gpa;
    int id;
}Student;


void sortBy_gpa(Student students[],int size);
void print_list(Student students[],int size);
void sortBy_name(Student students[],int size);

int main(void){
    
    Student student1 = {"Vladimir",2.43,532324};
    Student student2 = {"Soboslai",3.12,643234};
    Student student3 = {"Angelina",2.44,401245};
    Student student4 = {"Alsu",3.89,123040};
    Student student5 = {"Andrei",1.93,934212};
    Student student6 = {"Santiz",3.23,432599};

    
    Student students[] = {student1,student2,student3,student4,student5,student6};
    int size = sizeof(students)/sizeof(students[0]);
    
    printf("\t\t Sort by Gpa\n");
    sortBy_gpa(students, size);
    print_list(students, size);
    
    printf("\n\t\t Sort by Names\n");
    sortBy_name(students, size);
    print_list(students, size);
    
}

void sortBy_gpa(Student students[],int size){
    for (int i = 0; i < size - 1; i++) {
        for (int j = 0; j < size - 1 - i; j++) {
            if (students[j].gpa < students[j+1].gpa) {
                Student temp = students[j];
                students[j] = students[j+1];
                students[j+1] = temp;
            }
        }
    }
}
void print_list(Student students[],int size){
    for (int i = 0; i < size; i++) {
        printf("Student name: %-12s \t Gpa: %-12.3f \t ID: %d\n",students[i].name,students[i].gpa,students[i].id);
    }
}

void sortBy_name(Student students[],int size){
    for (int i = 0; i < size - 1; i++) {
        for (int j = 0; j - 1 - i ;j++) {
            if (students[j].name[0] > students[j + 1].name[0]) {
                Student temp = students[j];
                students[j] = students[j + 1];
                students[j + 1] = temp;
            }
        }
    }
}

