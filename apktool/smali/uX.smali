.class LuX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:LuW;

.field private final b:Landroid/view/View;


# direct methods
.method public constructor <init>(LuW;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, LuX;->a:LuW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    iput-object p2, p0, LuX;->b:Landroid/view/View;

    .line 511
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, LuX;->a:LuW;

    iget-object v1, p0, LuX;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, LuW;->c(Landroid/view/View;)V

    .line 526
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 516
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 521
    return-void
.end method
