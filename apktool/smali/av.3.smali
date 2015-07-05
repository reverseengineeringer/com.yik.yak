.class Lav;
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
    .line 1044
    iput-object p1, p0, Lav;->a:Las;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1047
    iget-object v0, p0, Lav;->a:Las;

    iget-object v0, v0, Las;->e:Lal;

    invoke-virtual {v0, v1}, Lal;->a(Z)V

    .line 1048
    iget-object v0, p0, Lav;->a:Las;

    iget-object v0, v0, Las;->b:Law;

    invoke-virtual {v0, v1}, Law;->a(Z)V

    .line 1049
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1050
    return-void
.end method
