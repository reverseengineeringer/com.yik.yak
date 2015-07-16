.class Lar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lao;


# direct methods
.method constructor <init>(Lao;)V
    .locals 0

    .prologue
    .line 1044
    iput-object p1, p0, Lar;->a:Lao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1047
    iget-object v0, p0, Lar;->a:Lao;

    iget-object v0, v0, Lao;->e:Lah;

    invoke-virtual {v0, v1}, Lah;->a(Z)V

    .line 1048
    iget-object v0, p0, Lar;->a:Lao;

    iget-object v0, v0, Lao;->b:Las;

    invoke-virtual {v0, v1}, Las;->a(Z)V

    .line 1049
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1050
    return-void
.end method
