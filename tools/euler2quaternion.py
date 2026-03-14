import math

def euler_to_quaternion(roll_x, pitch_y, yaw_z):
    """
    Преобразует углы Эйлера (в градусах) в кватернион (w, x, y, z).
    
    Параметры:
        roll_x  : угол вокруг оси X (крен), градусы
        pitch_y : угол вокруг оси Y (тангаж), градусы
        yaw_z   : угол вокруг оси Z (рыскание), градусы
    
    Возвращает:
        (w, x, y, z) – кватернион, совместимый с DirectX.
    """
    # Перевод в радианы
    roll = math.radians(roll_x)
    pitch = math.radians(pitch_y)
    yaw = math.radians(yaw_z)
    
    # Половины углов
    cy = math.cos(yaw * 0.5)
    sy = math.sin(yaw * 0.5)
    cp = math.cos(pitch * 0.5)
    sp = math.sin(pitch * 0.5)
    cr = math.cos(roll * 0.5)
    sr = math.sin(roll * 0.5)
    
    # Компоненты кватерниона (порядок: сначала yaw (Z), затем pitch (Y), затем roll (X))
    w = cr * cp * cy + sr * sp * sy
    x = sr * cp * cy - cr * sp * sy
    y = cr * sp * cy + sr * cp * sy
    z = cr * cp * sy - sr * sp * cy
    
    return (w, x, y, z)


if __name__ == "__main__":
    # Пример использования
    print("Преобразование углов X Y Z (градусы) в кватернион (w x y z)")
    try:
        inp = input("Введите углы X Y Z через пробел: ").split()
        if len(inp) == 3:
            x, y, z = map(float, inp)
            q = euler_to_quaternion(x, y, z)
            print(f"Кватернион: w={q[0]:.6f}, x={q[1]:.6f}, y={q[2]:.6f}, z={q[3]:.6f}")
        else:
            print("Ожидалось три числа.")
    except ValueError:
        print("Ошибка: введите числовые значения.")
    except KeyboardInterrupt:
        print("\nВыход.")