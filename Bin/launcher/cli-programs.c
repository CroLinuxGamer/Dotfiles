#include<stdio.h>
#include<stdlib.h>

// main function
int main (void)
{
    int a,b;

    system("clear");

    // Categories
    upis1:
    printf("\n\t\t\t\t     |--Program Categories--|\n\n");
    printf("1. System\n");
    printf("2. Multimedia\n");
    printf("3. Games\n");
    printf("0 = Exit\n\n");
    printf("Number of the category: ");
    scanf("%d", &a);

    system("clear");

    // A noob way of doing it but i like it
    if (a<0 || a>3)
    {
        printf("Wrong number\nPlease repeat\n");
        sleep(1);
        system("clear");
        goto upis1;
    }

    if (a==0)
    {
        goto kraj;
    }

    // System programs
    if(a==1)
    {
        upis2:
        printf("\n\t\t\t\t      |--System programs--|\n\n");
        printf("1. Pacui (pacman package manager)\n");
        printf("2. Mhwd (manjaro hardware manager)\n");
        printf("3. Lf (file manager)\n");
        printf("4. NeoVim (text and code editor)\n");
        printf("5. NetworkManager Tui (wifi manager)\n");
        printf("6. PulseMixer (pulseaudio mixer)\n");
        printf("7. Htop (system resource viewer)\n");
        printf("8. Scripts folder (my folder with custom scripts opened in lf)\n\n");
        printf("0 = Go back\n\n");

        printf("baba\n\n");

        printf("Choose program number: ");
        scanf("%d", &b);

        system("clear");

        switch(b)
        {
            case 0:
                goto upis1;
            case 1:
                system("bspc node focused.floating -t tiled & pacui");
                break;

            case 2:
                system("bspc node focused.floating -t tiled & mhwd-tui");
                break;

            case 4:
                system("bspc node focused.floating -t tiled & nvim");
                break;

            case 5:
                system("bspc node focused.floating -t tiled & nmtui");
                break;

            case 6:
                system("bspc node focused.floating -t tiled & pulsemixer");
                break;

            case 7:
                system("bspc node focused.floating -t tiled & htop");
                break;

            case 8:
                system("bspc node focused.floating -t tiled & lf ~/Bin");
                break;

            default:
                printf("Wrong number\n");
                printf("Please repeat\n");
                sleep(1);
                system("clear");
                goto upis2;
        }

    // Multimedia
    }
    else if(a==2)
    {
        upis3:
        printf("\n\t\t\t\t    |--Multimedia programs--|\n\n");
        printf("1. Online Anime (adl wrapper)\n");
        printf("2. Offline Anime (my anime folder opened in lf)\n");
        printf("3. Anime downloader (adl wrapper with download flag)\n");
        printf("4. Light novels (my light novels folder opened in lf)\n");
        printf("5. ncmpcpp (music player daemon client)\n\n");
        printf("0 = Go back\n\n");

        printf("Choose program number: ");
        scanf("%d", &b);

        system("clear");

        switch(b)
        {
            case 0:
            goto upis1;

            case 1:
                system("bspc node focused.floating -t tiled & adl");
                break;

            case 2:
                system("bspc node focused.floating -t tiled & lf ~/Videos/Anime");
                break;

            case 3:
                system("bspc node focused.floating -t tiled & adl -d");
                break;

            case 4:
                system("bspc node focused.floating -t tiled & lf ~/Lightnovels");
                break;

            case 5:
                system("bspc node focused.floating -t tiled & ncmpcpp");
                break;

            default:
           printf("Wrong number\n");
                printf("Please repeat\n");
                sleep(1);
                system("clear");
                goto upis3;
        }

    // Games
    }
    else if (a==3)
    {
        upis4:
        printf("\n\t\t\t\t\t   |--Games--|\n\n");
        printf("1. Ninvaders (Ncurses based space invaders clone)\n");
        printf("2. Curse Of War (Fast-paced RTS/Action game with ncurses interface)\n");
        printf("3. Moon buggy (Moon Buggy is a simple game for the text mode)\n");
        printf("4. Doomrl (A roguelike game based on the FPS Doom)\n");
        printf("5. Bombardier (The GNU Bombing utility (text game))\n");
        printf("6. Npush (simple sokoban game)\n");
        printf("0 = Go back\n\n");

        printf("Choose game number: ");
        scanf("%d", &b);

        system("clear");

        switch(b)
        {
            case 0:
                goto upis1;

            case 1:
                system("bspc node -t \~fullscreen");
                system("ninvaders");
                break;

            case 2:
                system("bspc node -t \~fullscreen & curseofwar");
                break;

            case 3:
                system("bspc node -t \~fullscreen & moon-buggy");
                break;

            case 4:
                system("doomrl");
                break;
            case 5:
                system("bspc node -t \~fullscreen & bombardier");
                break;

            case 6:
                system("bspc node -t \~fullscreen & npush");

            default:
                printf("Wrong number\n");
                printf("Please repeat\n");
                sleep(1);
                system("clear");
                goto upis4;
        }
    }

    kraj:

    return 0;
}
