Ce projet est réalisé dans le cadre du module Développement Full Stack et Microservices. Il s'agit de la création d'un site vitrine et e-commerce d'accessoires téléphoniques avec WordPress, hébergé via Docker et Portainer.

1- Étapes de Réalisation
 Configuration de la stack Docker Compose et gestion via l'interface visuelle Portainer.

Configuration initiale de WordPress .

Installation des extensions 

Gestion du catalogue d'accessoires WooCommerce.

 Formulaire de contact interactif avec WPForms .

Personnalisation visuelle des pages avec Elementor 

Optimisation du référencement naturel avec Yoast SEO.

Ajout de 10 accessoires téléphoniques.

Création de la structure des pages :

Accueil : Présentation générale de l'entreprise.

Catalogue : Boutique et filtres WooCommerce.

À propos : Mission et vision de PhoneTech Accessories.

Blog : Publication de 3 articles thématiques.

Contact : Formulaire de contact et coordonnées.

Publication d'articles sur le Blog :

Les tendances des accessoires mobiles

Les conseils d'entretien des smartphones

Les nouveautés technologiques

2- Architecture de WordPress
WordPress suit une architecture monolithique classique à 3 tiers :

Présentation  : Gérée par le moteur de thèmes PHP, HTML, CSS et JavaScript. Il génère le rendu visuel de la boutique et du blog.

Logique Métier : Assurée par WordPress et les plugins (WooCommerce, WPForms). Ils gèrent les règles de gestion (panier, articles, formulaires).

Données: Stocke la totalité des données du site (articles, pages, produits, commandes) .

3- Comparaison : Monolithe vs Microservices
Dans une architecture monolithique comme celle de WordPress, l'ensemble de l'application forme un bloc unique. Le frontend, la logique métier backend et la base de données sont étroitement liés. Cela rend le site très simple à développer, tester et héberger, ce qui est idéal pour des projets de taille moyenne ou des sites vitrines.

À l'inverse, l'architecture en microservices découpe l'application en plusieurs services autonomes et indépendants, chacun ayant sa propre base de données. Par exemple, la gestion des utilisateurs, le catalogue produit et le paiement fonctionnent séparément. Cette approche permet de mettre à jour ou de faire évoluer un service spécifique sans impacter le reste du système.
