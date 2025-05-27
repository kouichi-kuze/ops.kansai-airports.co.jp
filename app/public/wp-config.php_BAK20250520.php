<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'N.20EV71VBcW^q[UWjE._9@t~LTZz[w 6kW!Ksb4g?Ai5Z$fzsL1YK1!,_XpF_7<' );
define( 'SECURE_AUTH_KEY',   '^Fl{b`s|5,*}e7j+g%Lk)m^CMbhhB?74~ Z#T2nm.& g`KK:MuJlnHEq~k-[YLE*' );
define( 'LOGGED_IN_KEY',     '9r(}!,3$-duY G32Ny/&BFzS4nJ@Zu{FY(ZjG{z~t(9=3TP@$b&CFiDC!u!tKjaV' );
define( 'NONCE_KEY',         'pzL@g=EYCbW@|TgtnmoH(BA;syS/NR6.#y_h5#1A,|VslGNjLpQh@(u2xR6d&#IK' );
define( 'AUTH_SALT',         ';M<b4jfP@/uN3CaTKh`>,T ElA]opOL0A:L7sFf4kH2i<Lwc&iJV@bAuIKcrhG]!' );
define( 'SECURE_AUTH_SALT',  '_g,M^p`-Ku;7Mc@.X*J&-IN>-Swd#UoiWeJ7Q,BcJ<I3uR~o?{{Hxx<O1;+1e8B*' );
define( 'LOGGED_IN_SALT',    '(/:syEUL3LERkG$}.u2f`LHpy9o+3]q7cC;SqjyB1WO(%CEvk,[AtX4D@fB01$bg' );
define( 'NONCE_SALT',        '%7P07e-2(AM6Q7t31+&^`;,~Qx%m?KY:V85bh#un}N#*8W5~Ing{[p8mGXmPh;_z' );
define( 'WP_CACHE_KEY_SALT', ',nDd_;{6#1nv(|&PY^miIA4(i,Y2sEw{wDj5d.S eF:D41{j#Vep)SIY #J!0BsH' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
