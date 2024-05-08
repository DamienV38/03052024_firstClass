#include "Duree.h"
using namespace std; 

Duree::Duree(int heures, int minutes, int secondes) : m_heures(heures), m_minutes(minutes), m_secondes(secondes)
{
}

void Duree::Afficher() const
{
	cout << m_heures << "h:" << m_minutes << "m:" << m_secondes << "s" << endl;
}
