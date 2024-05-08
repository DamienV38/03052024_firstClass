#ifndef DEF_Duree
#define DEF_Duree

# include <iostream>
# include <string>

class Duree
{
public:
    Duree(int heures=0,int minutes=0,int secondes=0);
    void Afficher() const;

private:
	int m_heures;
	int m_minutes;
	int m_secondes;
};
#endif
