.class Ln;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ActionProvider$VisibilityListener;


# instance fields
.field final synthetic a:Lm;


# direct methods
.method constructor <init>(Lm;)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Ln;->a:Lm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Ln;->a:Lm;

    invoke-static {v0}, Lm;->a(Lm;)Li;

    move-result-object v0

    iget-object v1, p0, Ln;->a:Lm;

    invoke-virtual {v0, v1}, Li;->a(Lm;)V

    .line 667
    return-void
.end method
