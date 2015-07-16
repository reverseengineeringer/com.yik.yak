.class LsL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lth;


# instance fields
.field final synthetic a:LsK;


# direct methods
.method constructor <init>(LsK;)V
    .locals 0

    .prologue
    .line 1297
    iput-object p1, p0, LsL;->a:LsK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences;)V
    .locals 2

    .prologue
    .line 1300
    invoke-static {p1}, LsZ;->a(Landroid/content/SharedPreferences;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1301
    if-eqz v0, :cond_0

    .line 1302
    iget-object v1, p0, LsL;->a:LsK;

    invoke-static {v1, v0}, LsK;->a(LsK;Lorg/json/JSONArray;)V

    .line 1304
    :cond_0
    return-void
.end method
