import tkinter as tk
from tkinter import font
from config import constantes as cons
import util.util_ventana as util_ventana

class FormularioCalculadora(tk.Tk):

    def __init__(self):
        super().__init__()
        self.config_window()
        self.construir_widget()
        self.construir_widget_toggle()

    def construir_widget_toggle(self):
        # Iniciar con el tema oscuro
        self.dark_theme = True
        # Configurar la fuente FontAwesome
        font_awesome = font.Font(family='FontAwesome', size=12)
        # Boton para cambiar de tema
        self.theme_button = tk.Button(self, text="Modo Oscuro \uf186", width=13, font=font_awesome, bd=0, borderwidth=0,
                                      highlightthickness=0, relief=tk.FLAT, command=self.toggle_theme, bg=cons.COLOR_BOTONES_ESPECIALES_LIGHT)
        self.theme_button.grid(row=0, column=0, columnspan=2,
                               pady=0, padx=0, sticky="nw") # Agregado padx y sticky
        
    def toggle_theme(self):
        # Cambiar tema oscuro y claro
        if self.dark_theme:
            self.configure(bg=cons.COLOR_DE_FONDO_LIGHT)
            self.entry.config(fg=cons.COLOR_DE_TEXTO_LIGHT,
                              bg=cons.COLOR_CAJA_TEXTO_LIGHT)
            self.operation_label.config(
                fg=cons.COLOR_DE_TEXTO_LIGHT, bg=cons.COLOR_DE_FONDO_LIGHT)
            self.theme_button.configure(
                text="\uf185 Modo Claro", relief=tk.SUNKEN, bg=cons.COLOR_BOTONES_ESPECIALES_LIGHT)
        else:
            self.configure(bg=cons.COLOR_DE_FONDO_DARK)
            self.entry.config(fg=cons.COLOR_DE_TEXTO_DARK,
                              bg=cons.COLOR_CAJA_TEXTO_DARK)
            self.operation_label.config(
                fg=cons.COLOR_DE_TEXTO_DARK, bg=cons.COLOR_DE_FONDO_DARK)
            self.theme_button.configure(
                text="Modo Oscuro \uf186", relief=tk.RAISED, bg=cons.COLOR_BOTONES_ESPECIALES_LIGHT)
        # Invertir tema
        self.dark_theme = not self.dark_theme
            

    def config_window(self):
    #Configuracion Inicial de la ventana
        self.title('Python GUI Calculadora')
        #COnfigurar el color de fondo y hacer transparente la ventana
        self.configure(bg=cons.COLOR_DE_FONDO_DARK)
        self.attributes('-alpha', 0.96)
        w, h = 570, 570
        util_ventana.centrar_ventana(self, w, h)

    def construir_widget(self):
        #Etiqueta para mostarar la operacion solicitada
        self.operation_label = tk.Label(self, text="", font=(
            'Arial', 16), fg=cons.COLOR_DE_TEXTO_DARK, bg=cons.COLOR_DE_FONDO_DARK, justify='right')
        self.operation_label.grid(
            row=0, column=3, padx=10, pady=10) #Agregado Columnspan
        
        # Pantalla de operacion
        self.entry = tk.Entry(self, width=24, font=(
            'Arial', 30), bd=0, fg=cons.COLOR_DE_TEXTO_DARK, bg=cons.COLOR_CAJA_TEXTO_DARK, justify='right')
        self.entry.grid(row=1, column=0, columnspan=9,
                        padx=10, pady=10) #Agregado padding
        
        #Lista de Botones
        buttons = [
            'C', '%', '<', '/',
            '7', '8', '9', '*',
            '4', '5', '6', '-',
            '1', '2', '3', '+',
            '0', '.', '=',  
        ]

        row_val = 2 #Ajustado para dejar espacio para la etiqueta de operacion
        col_val = 0

        #Configurar la tipografia "Roboto" para botones
        roboto_font = font.Font(family="Roboto", size=12)

        for button in buttons:

            # Establecer el color de fondo de los botones especiales
            if button in ['=', '*', '/', '-', '+', 'C', '<', '%']:
                color_fondo = cons.COLOR_BOTONES_ESPCIALES_DARK
                #Ajustar el tamano de la fuente solo para estos botones
                button_font = font.Font(size=16, weight='bold')
            else:
                color_fondo = cons.COLOR_BOTONES_DARK
                button_font = roboto_font

            if button == '=':
                tk.Button(self, text=button, width=10, height=2,command=lambda b=button: self.on_button_click(b),
                          bg=color_fondo, fg=cons.COLOR_DE_TEXTO_DARK, relief=tk.FLAT, font=button_font, padx=5, pady=5,bd=0, borderwidth=0, highlightthickness=0,
                          overrelief='flat').grid(row=row_val, column=col_val, columnspan=2, pady=5) # Agregado columnspan
                col_val += 1
            else: 
                tk.Button(self, text=button, width=10, height=2,command=lambda b=button: self.on_button_click(b),
                          bg=color_fondo, fg=cons.COLOR_DE_TEXTO_DARK, relief=tk.FLAT, font=button_font, padx=5, pady=5, bd=0, borderwidth=0, highlightthickness=0,
                          overrelief='flat').grid(row=row_val, column=col_val, pady=5) # Agregado Padding
                col_val += 1

            if col_val > 3:
                col_val = 0
                row_val += 1
        
    def on_button_click(self, value):
        if value == '=':
            try:
                expression = self.entry.get().replace('%', '/100')
                result = eval(expression)
                self.entry.delete(0, tk.END)
                self.entry.insert(tk.END, str(result))
                operation = expression + " " + value
                self.operation_label.config(text=operation)
                 
            except Exception as e:
                self.entry.delete(0, tk.END)
                self.entry.insert(tk.END, "Error")
                self.operation_label.config(text="")

        elif value == 'C':
            self.entry.delete(0, tk.END)
            self.operation_label.config(text="")
        elif value == '<':
            current_text = self.entry.get()
            if current_text:
                new_text = current_text[:-1] # Eliminar el ultimo caracter
                self.entry.delete(0, tk.END)
                self.entry.insert(tk.END, new_text)
                # Actualizar la etiqueta de operacion
                self.operation_label.config(text=new_text + " ")

        else :
            current_text = self.entry.get()
            self.entry.delete(0, tk.END)
            self.entry.insert(tk.END, current_text + value)
            if value == '=':
                self.operation_label.config(text="")
        