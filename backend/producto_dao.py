import mysql.connector
from database import DatabaseConnection

class ProductoDAO:
    """Clase de acceso a datos para productos."""

    @staticmethod
    def obtener_productos():
        """Consulta todos los productos."""
        try:
            conexion = DatabaseConnection().get_connection()
            cursor = conexion.cursor(dictionary=True)
            cursor.execute("SELECT * FROM productos;")
            productos = cursor.fetchall()
            return productos
        except Exception as e:
            print(f" Error al obtener productos: {e}")
            return []

    @staticmethod
    def obtener_producto_por_id(product_id):
        """Obtiene un producto específico por su ID."""
        try:
            conexion = DatabaseConnection().get_connection()
            cursor = conexion.cursor(dictionary=True)
            cursor.execute("SELECT * FROM productos WHERE id = %s;", (product_id,))
            producto = cursor.fetchone()
            return producto
        except Exception as e:
            print(f" Error al obtener producto por ID: {e}")
            return None

    @staticmethod
    def agregar_producto(nombre, precio, descripcion, image):
        """Inserta un nuevo producto en la base de datos."""
        try:
            conexion = DatabaseConnection().get_connection()
            cursor = conexion.cursor()
            consulta = """
                INSERT INTO productos (nombre, precio, descripcion, image)
                VALUES (%s, %s, %s, %s);
            """
            cursor.execute(consulta, (nombre, precio, descripcion, image))
            conexion.commit()
            print("Producto agregado correctamente.")
        except Exception as e:
            print(f"Error al agregar producto: {e}")
