.class LDW;
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
    .line 240
    iput-object p1, p0, LDW;->a:LDP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, LDW;->a:LDP;

    iget-object v1, p0, LDW;->a:LDP;

    invoke-static {v1}, LDP;->h(LDP;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, LDP;->a(LDP;IZ)V

    .line 244
    iget-object v0, p0, LDW;->a:LDP;

    invoke-static {v0}, LDP;->g(LDP;)V

    .line 245
    return-void
.end method
