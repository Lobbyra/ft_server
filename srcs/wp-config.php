<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'wordpress');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'wpuser');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', 'secure_password');

/** Adresse de l’hébergement MySQL. */
define('DB_HOST', 'localhost');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8');

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '9}p(T.j{_fcbO] zB8tBX g9PX5=4+_L<|FlN)YyEfCTk5A#nwpPnT$g`V=-Rg9@');
define('SECURE_AUTH_KEY',  'qDG6:}&-X4gJ*#W8}=|^L%w)>TS8/zee-~d,H5*x9J]P=IWZw{)?AW,BRQpchSpi');
define('LOGGED_IN_KEY',    ' Z<{(16Ls$AvF/~}d5p/Wh*C-EV^wKFEAQ%#U/UXG$e|^dOfSf-xDi]-4L-(7v*J');
define('NONCE_KEY',        'Q|KgLw-1{HJ 1_Y<F+on&PpCfJD<YXf/$#NI1mk%1oW,mT)qWQm@n12NCOA[Hu-|');
define('AUTH_SALT',        'hx}0s-mmY.!r0a1={sJzu_6@22iax[+KHqpYKP*Uq+2jtu@/;-mil.;X0Zuy@a#%');
define('SECURE_AUTH_SALT', 'T1x>u+rT*+1rQv5}+sK_W^>!<Y%AsjN-NFc67TRy+_g0SAzz6iu<P}E*6nSu*kwO');
define('LOGGED_IN_SALT',   '_]c|G<W,e19fKmt6jDw25|._5)~Wj?RA:@f[a#ez*d(ID5-N}c(( _.[/oyQGE=L');
define('NONCE_SALT',       '|tqMz1eqZtC.ZC/kbW3S[6+pf6N;N|13B|RwM+1IvJEV> %g_0VJ>3^ismYFJGCS');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* C’est tout, ne touchez pas à ce qui suit ! Bonne publication. */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');
