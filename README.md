Ce projet est réalisé dans le cadre du module Développement Full Stack et Microservices. Il s'agit de la création d'un site vitrine et e-commerce d'accessoires téléphoniques avec WordPress, hébergé via Docker et Portainer.

1. Étapes de Réalisation
Déploiement de l'infrastructure : Configuration de la stack Docker Compose et gestion via l'interface visuelle Portainer.

Configuration initiale de WordPress : Installation du CMS et liaison avec la base de données MySQL.

Installation des extensions (Plugins) :

WooCommerce : Gestion du catalogue d'accessoires.

WPForms : Formulaire de contact interactif.

Elementor : Personnalisation visuelle des pages.

Yoast SEO : Optimisation du référencement naturel.

Création du catalogue de produits : Ajout de 10 accessoires téléphoniques (coques, chargeurs, écouteurs, power banks, supports).

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

2. Architecture de WordPress
WordPress suit une architecture monolithique classique à 3 tiers :

Présentation (Frontend / Thèmes) : Gérée par le moteur de thèmes PHP, HTML, CSS et JavaScript. Il génère le rendu visuel de la boutique et du blog.

Logique Métier (Backend / Cœur & Extensions) : Assurée par le cœur (Core) de WordPress et les plugins PHP (WooCommerce, WPForms). Ils gèrent les règles de gestion (panier, articles, formulaires, authentification).

Données (Base de Données MySQL/MariaDB) : Stocke la totalité des données du site (articles, pages, comptes utilisateurs, produits, commandes, options système) à travers des tables interreliées (ex: wp_posts, wp_options, wp_users).

3. Comparaison : Monolithe vs Microservices
Dans une architecture monolithique comme celle de WordPress, l'ensemble de l'application forme un bloc unique. Le frontend, la logique métier backend et la base de données sont étroitement liés. Cela rend le site très simple à développer, tester et héberger, ce qui est idéal pour des projets de taille moyenne ou des sites vitrines. En revanche, cela implique que la moindre modification nécessite de redéployer l'application entière, et que l'évolution des performances se fait principalement en augmentant la puissance du serveur unique (scalabilité verticale).

À l'inverse, l'architecture en microservices découpe l'application en plusieurs services autonomes et indépendants, chacun ayant sa propre base de données. Par exemple, la gestion des utilisateurs, le catalogue produit et le paiement fonctionnent séparément. Cette approche permet de mettre à jour ou de faire évoluer un service spécifique sans impacter le reste du système (scalabilité horizontale). Cependant, elle introduit une complexité technique bien plus élevée, nécessitant des outils d'orchestration comme Docker, Kubernetes ou des passerelles d'API.
