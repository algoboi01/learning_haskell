#include <stdio.h>

int main() {
	
	int fs;
	float in;

	printf("Enter family size: \n");
	scanf("%d", &fs);
	printf("Enter Income: \n");
	scanf("%f", &in);

	if (fs == 1) {
		if(in < 344000) {
			printf("Lower income\n");
		}
	
	} else if (in >= 344000 && in < 103200) {
		printf("Middle range\n");
	} else {
		printf("Upper Range\n");
	}

	return 0;
}
