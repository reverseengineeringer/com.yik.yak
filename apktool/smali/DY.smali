.class LDY;
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
    .line 256
    iput-object p1, p0, LDY;->a:LDP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, LDY;->a:LDP;

    invoke-static {v0}, LDP;->g(LDP;)V

    .line 261
    return-void
.end method