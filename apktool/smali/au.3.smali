.class Lau;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Las;


# direct methods
.method constructor <init>(Las;)V
    .locals 0

    .prologue
    .line 1032
    iput-object p1, p0, Lau;->a:Las;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 1035
    iget-object v0, p0, Lau;->a:Las;

    iget-object v0, v0, Las;->b:Law;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Law;->a(Z)V

    .line 1036
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1037
    return-void
.end method