.class LuF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:LuE;

.field private final b:Landroid/view/View;


# direct methods
.method public constructor <init>(LuE;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, LuF;->a:LuE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p2, p0, LuF;->b:Landroid/view/View;

    .line 243
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, LuF;->a:LuE;

    iget-object v1, p0, LuF;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, LuE;->c(Landroid/view/View;)V

    .line 258
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 253
    return-void
.end method
