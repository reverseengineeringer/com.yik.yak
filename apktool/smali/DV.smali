.class LDV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LDP;


# direct methods
.method constructor <init>(LDP;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, LDV;->a:LDP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, LDV;->a:LDP;

    iget-object v1, p0, LDV;->a:LDP;

    invoke-static {v1}, LDP;->f(LDP;)Lcom/yik/yak/data/models/Yak;

    move-result-object v1

    invoke-static {v0, v1}, LDP;->a(LDP;Lcom/yik/yak/data/models/Yak;)V

    .line 235
    iget-object v0, p0, LDV;->a:LDP;

    invoke-static {v0}, LDP;->g(LDP;)V

    .line 236
    return-void
.end method
