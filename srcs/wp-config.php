<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress_db' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '&a2t-DK6;)P^+-A|[akTNS--D|_gAk|N+a^1I,!E[-#IR}HiKl]GVgRCw= X!Lv&');
define('SECURE_AUTH_KEY',  '_mm1>%{r6HndfDZLeY}R}mu5)H-@07O%bUhDi!YuR.q#CH>+/}wPLRn-~`:LiUE1');
define('LOGGED_IN_KEY',    '`-@CLPzWCI8iAn2+ApBh3k~OUO;dnm|/wzT-wP+]:8/9WiG|y8!-NRNUjE+T:;*<');
define('NONCE_KEY',        '/>uBG)ucp+4Zfy<M-et^B!%h&~7(Rjb)wm/mLIPfB7,&:|xj]AnITb;S@}v!V[K4');
define('AUTH_SALT',        'ADaLcOZfs&?E)v;i6sI#91aSE|zieOAC{F[>qny#9OW@phZq2^/d`uC(5seB9ZTT');
define('SECURE_AUTH_SALT', 'nr+6r|J6cbznDEeh*xE^EOW0^ME*Gk]Y/r3_k:_{p0}Z7vc<#i# rm=-&Q!O^]z1');
define('LOGGED_IN_SALT',   'sKCD 7n6Zh_T|A1/qe`bTM+vhDPf/b|]KhyqRtv.Ie<4aB2mIj$u(/QEtO(8n-jw');
define('NONCE_SALT',       'jl@zJ6+2;J0AlR(kBm/` z6~`H F,yYt~a]3Ykt4Lrsm<pv.|jAe)AoOYX)> +1@');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

